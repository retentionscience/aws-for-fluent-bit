make KINESIS_PLUGIN_CLONE_URL=https://github.com/zackwine/amazon-kinesis-streams-for-fluent-bit.git KINESIS_PLUGIN_BRANCH=kpl_aggregation_support kinesis-dev
docker tag amazon/aws-for-fluent-bit:latest 362213751741.dkr.ecr.us-east-1.amazonaws.com/amazon-aws-for-fluent-bit:latest
ecr-login 362213751741.dkr.ecr.us-east-1.amazonaws.com/amazon-aws-for-fluent-bit
docker push 362213751741.dkr.ecr.us-east-1.amazonaws.com/amazon-aws-for-fluent-bit:latest
aws ecs update-service --service stg-waves --cluster common-cluster --force-new-deployment

