#!/bin/bash
set -e

echo " Generating audio for all products (S5)..."

# Get URLs from CloudFormation
STACK_NAME="techmoda-ai-luis-ernesto-tejeda-gomez"
API_URL=$(aws cloudformation describe-stacks --stack-name "$STACK_NAME" --region us-east-1 \
  --query "Stacks[0].Outputs[?OutputKey=='ApiUrl'].OutputValue" --output text | sed 's:/$::')

SYNTHESIZE_URL=$(aws cloudformation describe-stacks --stack-name "$STACK_NAME" --region us-east-1 \
  --query "Stacks[0].Outputs[?OutputKey=='SynthesizeVoiceUrl'].OutputValue" --output text | sed 's:/$::')

# Get all product IDs
PRODUCT_IDS=$(curl -s "$API_URL/products" | python3 -c "import sys, json; d=json.load(sys.stdin); print('\n'.join([p['productId'] for p in d['products']]))")

# For each product, generate audio
while read -r PRODUCT_ID; do
  echo "  Processing: $PRODUCT_ID"
  
  # Call S5
  RESULT=$(curl -s -X POST "$SYNTHESIZE_URL" \
    -H "Content-Type: application/json" \
    -d "{\"productId\": \"$PRODUCT_ID\"}")
  
  AUDIO_URL=$(echo "$RESULT" | python3 -c "import sys, json; print(json.load(sys.stdin).get('audioUrl', 'ERROR'))")
  
  if [ "$AUDIO_URL" != "ERROR" ]; then
    echo "    ✓ Audio: $AUDIO_URL"
  else
    echo "    ✗ Failed: $RESULT"
  fi
done <<< "$PRODUCT_IDS"

echo "Done!"
