
	Managed S3 bucket: aws-sam-cli-managed-default-samclisourcebucket-lygcp6suvfg2
	Auto resolution of buckets can be turned off by setting resolve_s3=False
	To use a specific S3 bucket, set --s3-bucket=<bucket_name>
	Above settings can be stored in samconfig.toml

	Deploying with following values
	===============================
	Stack name                   : techmoda-ai-luis-ernesto-tejeda-gomez
	Region                       : us-east-1
	Confirm changeset            : False
	Disable rollback             : False
	Deployment s3 bucket         : aws-sam-cli-managed-default-samclisourcebucket-lygcp6suvfg2
	Capabilities                 : ["CAPABILITY_IAM", "CAPABILITY_AUTO_EXPAND"]
	Parameter overrides          : {}
	Signing Profiles             : {}

Initiating deployment
=====================



Waiting for changeset to be created..

CloudFormation stack changeset
-------------------------------------------------------------------------------------------------
Operation                LogicalResourceId        ResourceType             Replacement            
-------------------------------------------------------------------------------------------------
+ Add                    AiCostAlarm              AWS::CloudWatch::Alarm   N/A                    
+ Add                    BedrockInvocationLogGr   AWS::Logs::LogGroup      N/A                    
                         oup                                                                      
* Modify                 AnalyzeSentimentFuncti   AWS::IAM::Role           False                  
                         onRole                                                                   
* Modify                 AnalyzeSentimentFuncti   AWS::Lambda::Function    False                  
                         on                                                                       
* Modify                 EnrichLabelsFunctionRo   AWS::IAM::Role           False                  
                         le                                                                       
* Modify                 EnrichLabelsFunction     AWS::Lambda::Function    False                  
* Modify                 GenerateDescriptionFun   AWS::IAM::Role           False                  
                         ctionRole                                                                
* Modify                 GenerateDescriptionFun   AWS::Lambda::Function    False                  
                         ction                                                                    
* Modify                 IndexEmbeddingsFunctio   AWS::IAM::Role           False                  
                         nRole                                                                    
* Modify                 IndexEmbeddingsFunctio   AWS::Lambda::Function    False                  
                         n                                                                        
* Modify                 ModerateImageFunctionR   AWS::IAM::Role           False                  
                         ole                                                                      
* Modify                 ModerateImageFunction    AWS::Lambda::Function    False                  
* Modify                 RouterFunctionRole       AWS::IAM::Role           False                  
* Modify                 RouterFunction           AWS::Lambda::Function    False                  
* Modify                 SemanticSearchFunction   AWS::IAM::Role           False                  
                         Role                                                                     
* Modify                 SemanticSearchFunction   AWS::Lambda::Function    False                  
* Modify                 ShoppingAssistantFunct   AWS::IAM::Role           False                  
                         ionRole                                                                  
* Modify                 ShoppingAssistantFunct   AWS::Lambda::Function    False                  
                         ion                                                                      
* Modify                 SynthesizeVoiceFunctio   AWS::IAM::Role           False                  
                         nRole                                                                    
* Modify                 SynthesizeVoiceFunctio   AWS::Lambda::Function    False                  
                         n                                                                        
* Modify                 TranslateCatalogFuncti   AWS::IAM::Role           False                  
                         onRole                                                                   
* Modify                 TranslateCatalogFuncti   AWS::Lambda::Function    False                  
                         on                                                                       
-------------------------------------------------------------------------------------------------


Changeset created successfully. arn:aws:cloudformation:us-east-1:281248178297:changeSet/samcli-deploy1789163295/e7c08c0e-bba7-42ba-b4ca-7abe62d874a9


2026-09-11 21:48:31 - Waiting for stack create/update to complete

CloudFormation events from stack operations (refresh every 5.0 seconds)
-------------------------------------------------------------------------------------------------
ResourceStatus           ResourceType             LogicalResourceId        ResourceStatusReason   
-------------------------------------------------------------------------------------------------
UPDATE_IN_PROGRESS       AWS::CloudFormation::S   techmoda-ai-luis-        User Initiated         
                         tack                     ernesto-tejeda-gomez                            
CREATE_IN_PROGRESS       AWS::Logs::LogGroup      BedrockInvocationLogGr   -                      
                                                  oup                                             
CREATE_IN_PROGRESS       AWS::CloudWatch::Alarm   AiCostAlarm              -                      
UPDATE_IN_PROGRESS       AWS::IAM::Role           GenerateDescriptionFun   -                      
                                                  ctionRole                                       
UPDATE_IN_PROGRESS       AWS::IAM::Role           ShoppingAssistantFunct   -                      
                                                  ionRole                                         
UPDATE_IN_PROGRESS       AWS::IAM::Role           EnrichLabelsFunctionRo   -                      
                                                  le                                              
UPDATE_IN_PROGRESS       AWS::IAM::Role           SynthesizeVoiceFunctio   -                      
                                                  nRole                                           
UPDATE_IN_PROGRESS       AWS::IAM::Role           TranslateCatalogFuncti   -                      
                                                  onRole                                          
UPDATE_IN_PROGRESS       AWS::IAM::Role           RouterFunctionRole       -                      
UPDATE_IN_PROGRESS       AWS::IAM::Role           SemanticSearchFunction   -                      
                                                  Role                                            
UPDATE_IN_PROGRESS       AWS::IAM::Role           AnalyzeSentimentFuncti   -                      
                                                  onRole                                          
UPDATE_IN_PROGRESS       AWS::IAM::Role           ModerateImageFunctionR   -                      
                                                  ole                                             
UPDATE_IN_PROGRESS       AWS::IAM::Role           IndexEmbeddingsFunctio   -                      
                                                  nRole                                           
CREATE_IN_PROGRESS       AWS::Logs::LogGroup      BedrockInvocationLogGr   Resource creation      
                                                  oup                      Initiated              
CREATE_IN_PROGRESS       AWS::CloudWatch::Alarm   AiCostAlarm              Resource creation      
                                                                           Initiated              
CREATE_FAILED            AWS::CloudWatch::Alarm   AiCostAlarm              Resource handler       
                                                                           returned message:      
                                                                           "User: arn:aws:sts::28 
                                                                           1248178297:assumed-    
                                                                           role/ws-mxmex35-       
                                                                           ernestot1928-          
                                                                           CodeEditorInstanceBoot 
                                                                           strap-OvYIWiM22SMF/i-  
                                                                           0f605a5b5337a819e is   
                                                                           not authorized to      
                                                                           perform: cloudwatch:Pu 
                                                                           tMetricAlarm on        
                                                                           resource:              
                                                                           arn:aws:cloudwatch:us- 
                                                                           east-                  
                                                                           1:281248178297:alarm:t 
                                                                           echmoda-ai-luis-       
                                                                           ernesto-tejeda-gomez-  
                                                                           estimated-charges      
                                                                           because no permissions 
                                                                           boundary allows the cl 
                                                                           oudwatch:PutMetricAlar 
                                                                           m action (Service:     
                                                                           CloudWatch, Status     
                                                                           Code: 403, Request ID: 
                                                                           fb31306e-3a0d-4eb1-    
                                                                           b0ca-927aaba3fa83)     
                                                                           (SDK Attempt Count:    
                                                                           1)" (RequestToken: b3a 
                                                                           46ba3-f9ba-2c19-d5bd-  
                                                                           2ba5e6d0978d,          
                                                                           HandlerErrorCode:      
                                                                           AccessDenied)          
UPDATE_FAILED            AWS::IAM::Role           TranslateCatalogFuncti   Resource update        
                                                  onRole                   cancelled              
UPDATE_FAILED            AWS::IAM::Role           IndexEmbeddingsFunctio   Resource update        
                                                  nRole                    cancelled              
UPDATE_FAILED            AWS::IAM::Role           ModerateImageFunctionR   Resource update        
                                                  ole                      cancelled              
UPDATE_FAILED            AWS::IAM::Role           AnalyzeSentimentFuncti   Resource update        
                                                  onRole                   cancelled              
UPDATE_FAILED            AWS::IAM::Role           SemanticSearchFunction   Resource update        
                                                  Role                     cancelled              
UPDATE_FAILED            AWS::IAM::Role           EnrichLabelsFunctionRo   Resource update        
                                                  le                       cancelled              
UPDATE_FAILED            AWS::IAM::Role           GenerateDescriptionFun   Resource update        
                                                  ctionRole                cancelled              
CREATE_FAILED            AWS::Logs::LogGroup      BedrockInvocationLogGr   Resource creation      
                                                  oup                      cancelled              
UPDATE_FAILED            AWS::IAM::Role           ShoppingAssistantFunct   Resource update        
                                                  ionRole                  cancelled              
UPDATE_FAILED            AWS::IAM::Role           RouterFunctionRole       Resource update        
                                                                           cancelled              
UPDATE_FAILED            AWS::IAM::Role           SynthesizeVoiceFunctio   Resource update        
                                                  nRole                    cancelled              
UPDATE_ROLLBACK_IN_PRO   AWS::CloudFormation::S   techmoda-ai-luis-        The following          
GRESS                    tack                     ernesto-tejeda-gomez     resource(s) failed to  
                                                                           create: [BedrockInvoca 
                                                                           tionLogGroup,          
                                                                           AiCostAlarm]. The      
                                                                           following resource(s)  
                                                                           failed to update: [Gen 
                                                                           erateDescriptionFuncti 
                                                                           onRole, TranslateCatal 
                                                                           ogFunctionRole, Analyz 
                                                                           eSentimentFunctionRole 
                                                                           , ShoppingAssistantFun 
                                                                           ctionRole, SynthesizeV 
                                                                           oiceFunctionRole, Enri 
                                                                           chLabelsFunctionRole,  
                                                                           RouterFunctionRole, Mo 
                                                                           derateImageFunctionRol 
                                                                           e, IndexEmbeddingsFunc 
                                                                           tionRole, SemanticSear 
                                                                           chFunctionRole].       
UPDATE_IN_PROGRESS       AWS::IAM::Role           AnalyzeSentimentFuncti   -                      
                                                  onRole                                          
UPDATE_IN_PROGRESS       AWS::IAM::Role           TranslateCatalogFuncti   -                      
                                                  onRole                                          
UPDATE_IN_PROGRESS       AWS::IAM::Role           GenerateDescriptionFun   -                      
                                                  ctionRole                                       
UPDATE_IN_PROGRESS       AWS::IAM::Role           ModerateImageFunctionR   -                      
                                                  ole                                             
UPDATE_IN_PROGRESS       AWS::IAM::Role           EnrichLabelsFunctionRo   -                      
                                                  le                                              
UPDATE_IN_PROGRESS       AWS::IAM::Role           SynthesizeVoiceFunctio   -                      
                                                  nRole                                           
UPDATE_IN_PROGRESS       AWS::IAM::Role           SemanticSearchFunction   -                      
                                                  Role                                            
UPDATE_IN_PROGRESS       AWS::IAM::Role           RouterFunctionRole       -                      
UPDATE_IN_PROGRESS       AWS::IAM::Role           ShoppingAssistantFunct   -                      
                                                  ionRole                                         
UPDATE_IN_PROGRESS       AWS::IAM::Role           IndexEmbeddingsFunctio   -                      
                                                  nRole                                           
UPDATE_COMPLETE          AWS::IAM::Role           AnalyzeSentimentFuncti   -                      
                                                  onRole                                          
UPDATE_COMPLETE          AWS::IAM::Role           SemanticSearchFunction   -                      
                                                  Role                                            
UPDATE_COMPLETE          AWS::IAM::Role           TranslateCatalogFuncti   -                      
                                                  onRole                                          
UPDATE_COMPLETE          AWS::IAM::Role           GenerateDescriptionFun   -                      
                                                  ctionRole                                       
UPDATE_COMPLETE          AWS::IAM::Role           RouterFunctionRole       -                      
UPDATE_COMPLETE          AWS::IAM::Role           SynthesizeVoiceFunctio   -                      
                                                  nRole                                           
UPDATE_COMPLETE          AWS::IAM::Role           ShoppingAssistantFunct   -                      
                                                  ionRole                                         
UPDATE_COMPLETE          AWS::IAM::Role           IndexEmbeddingsFunctio   -                      
                                                  nRole                                           
UPDATE_COMPLETE          AWS::IAM::Role           EnrichLabelsFunctionRo   -                      
                                                  le                                              
UPDATE_COMPLETE          AWS::IAM::Role           ModerateImageFunctionR   -                      
                                                  ole                                             
UPDATE_ROLLBACK_COMPLE   AWS::CloudFormation::S   techmoda-ai-luis-        -                      
TE_CLEANUP_IN_PROGRESS   tack                     ernesto-tejeda-gomez                            
DELETE_IN_PROGRESS       AWS::CloudWatch::Alarm   AiCostAlarm              -                      
DELETE_IN_PROGRESS       AWS::Logs::LogGroup      BedrockInvocationLogGr   -                      
                                                  oup                                             
DELETE_FAILED            AWS::CloudWatch::Alarm   AiCostAlarm              Resource handler       
                                                                           returned message:      
                                                                           "User: arn:aws:sts::28 
                                                                           1248178297:assumed-    
                                                                           role/ws-mxmex35-       
                                                                           ernestot1928-          
                                                                           CodeEditorInstanceBoot 
                                                                           strap-OvYIWiM22SMF/i-  
                                                                           0f605a5b5337a819e is   
                                                                           not authorized to      
                                                                           perform: cloudwatch:De 
                                                                           leteAlarms on          
                                                                           resource:              
                                                                           arn:aws:cloudwatch:us- 
                                                                           east-                  
                                                                           1:281248178297:alarm:t 
                                                                           echmoda-ai-luis-       
                                                                           ernesto-tejeda-gomez-  
                                                                           estimated-charges      
                                                                           because no permissions 
                                                                           boundary allows the cl 
                                                                           oudwatch:DeleteAlarms  
                                                                           action (Service:       
                                                                           CloudWatch, Status     
                                                                           Code: 403, Request ID: 
                                                                           ab4f0110-885c-4106-    
                                                                           8cfe-220ebb160993)     
                                                                           (SDK Attempt Count:    
                                                                           1)" (RequestToken: 20e 
                                                                           608f0-a767-80ea-0ef3-  
                                                                           44af790b483c,          
                                                                           HandlerErrorCode:      
                                                                           AccessDenied)          
DELETE_COMPLETE          AWS::Logs::LogGroup      BedrockInvocationLogGr   -                      
                                                  oup                                             
DELETE_IN_PROGRESS       AWS::CloudWatch::Alarm   AiCostAlarm              -                      
DELETE_FAILED            AWS::CloudWatch::Alarm   AiCostAlarm              Resource handler       
                                                                           returned message:      
                                                                           "User: arn:aws:sts::28 
                                                                           1248178297:assumed-    
                                                                           role/ws-mxmex35-       
                                                                           ernestot1928-          
                                                                           CodeEditorInstanceBoot 
                                                                           strap-OvYIWiM22SMF/i-  
                                                                           0f605a5b5337a819e is   
                                                                           not authorized to      
                                                                           perform: cloudwatch:De 
                                                                           leteAlarms on          
                                                                           resource:              
                                                                           arn:aws:cloudwatch:us- 
                                                                           east-                  
                                                                           1:281248178297:alarm:t 
                                                                           echmoda-ai-luis-       
                                                                           ernesto-tejeda-gomez-  
                                                                           estimated-charges      
                                                                           because no permissions 
                                                                           boundary allows the cl 
                                                                           oudwatch:DeleteAlarms  
                                                                           action (Service:       
                                                                           CloudWatch, Status     
                                                                           Code: 403, Request ID: 
                                                                           5444e730-a97a-4f63-    
                                                                           a279-a6931f554c6e)     
                                                                           (SDK Attempt Count:    
                                                                           1)" (RequestToken: 854 
                                                                           5f908-77c0-d4ea-74da-  
                                                                           f1965ae63d4c,          
                                                                           HandlerErrorCode:      
                                                                           AccessDenied)          
DELETE_IN_PROGRESS       AWS::CloudWatch::Alarm   AiCostAlarm              -                      
DELETE_FAILED            AWS::CloudWatch::Alarm   AiCostAlarm              Resource handler       
                                                                           returned message:      
                                                                           "User: arn:aws:sts::28 
                                                                           1248178297:assumed-    
                                                                           role/ws-mxmex35-       
                                                                           ernestot1928-          
                                                                           CodeEditorInstanceBoot 
                                                                           strap-OvYIWiM22SMF/i-  
                                                                           0f605a5b5337a819e is   
                                                                           not authorized to      
                                                                           perform: cloudwatch:De 
                                                                           leteAlarms on          
                                                                           resource:              
                                                                           arn:aws:cloudwatch:us- 
                                                                           east-                  
                                                                           1:281248178297:alarm:t 
                                                                           echmoda-ai-luis-       
                                                                           ernesto-tejeda-gomez-  
                                                                           estimated-charges      
                                                                           because no permissions 
                                                                           boundary allows the cl 
                                                                           oudwatch:DeleteAlarms  
                                                                           action (Service:       
                                                                           CloudWatch, Status     
                                                                           Code: 403, Request ID: 
                                                                           8c6327ca-f735-4666-    
                                                                           8dec-ba0232a5c4f3)     
                                                                           (SDK Attempt Count:    
                                                                           1)" (RequestToken: 76d 
                                                                           6a361-feca-5436-8912-  
                                                                           1dccc15ee800,          
                                                                           HandlerErrorCode:      
                                                                           AccessDenied)          
UPDATE_ROLLBACK_COMPLE   AWS::CloudFormation::S   techmoda-ai-luis-        Update successful. One 
TE                       tack                     ernesto-tejeda-gomez     or more resources      
                                                                           could not be deleted.  
-------------------------------------------------------------------------------------------------

