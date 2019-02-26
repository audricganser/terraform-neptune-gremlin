<img src="https://github.com/audricganser/audricganser.github.io/blob/master/img/terraformneptunegremlin.png" height="125" width="300">

# Terraform: AWS Neptune Gremlin Setup

## Warning:
This Neptune Terraform is a bare bones setup. Your Neptune instance will be
internet facing, and anybody will be able to access it. For more detailed
instructions on how to set up iam authentication please visit: [AWS iam-auth](https://docs.aws.amazon.com/neptune/latest/userguide/iam-auth.html).

## AWS CLI
1. Install the AWS CLI in order for you to log into AWS through the terminal:
```
$ pip3 install awscli --upgrade --user
```

2. Log into AWS using the [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html#cli-quick-configuration)

## Terraform
1. Install Terraform using following [instructions](https://learn.hashicorp.com/terraform/getting-started/install.html)

2. `vars.tf` contains variables that are needed for your Neptune instance. Fill in these variables with the values associated with your AWS account.

3. Run `$terraform plan`, to make sure all resources are created correctly

4. Run `$terraform apply`

## Gremlin
1. Go to the AWS console -> EC2 -> Running instances.

2. Select your instance

3. Add a PEM file to your `~/.aws` directory that matches you key pair name on your EC2 instance.
Ex. `your_instance_key_pair_name.pem` which contains your RSA private key
Ex.
```
-----BEGIN RSA PRIVATE KEY-----
123456qwert23456rtyu234567891234
1234asd123456asd12i4fgh4567hj567
-----END RSA PRIVATE KEY-----
```

4. Click on the connect button above and follow the commands given to ssh into instance.

5. Once logged into your EC2 instance go through the following [AWS instructions](https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-gremlin-console.html) to finalize the Gremlin installation.

### Extra:
AWS provides instructions to connect to your Neptune DB instance in different ways found [here](https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-gremlin.html)
