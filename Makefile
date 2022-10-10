ENV = "dev"

gen-doc:
	@terraform-docs markdown table --output-file README.md .

install: init plan apply

upgrade: plan apply

init:
	@terraform init -backend-config=backend-config/$(ENV).tf

plan:
	@terraform plan --var-file=variables-$(ENV).tfvars -out=$(ENV).plan

apply:
	@terraform apply $(ENV).plan

destroy:
	@terraform destroy --var-file=variable-$(ENV).tfvars

change-backend:
	@terraform init -reconfigure -backend-config=backend-config/$(ENV).tf 