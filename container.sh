echo "enabling static websites"
az account set --subscription "c726bf38-5524-4f36-ae0c-e87f35b14d51"
az storage blob service-properties update --account-name "adkwolek" --static-website --404-document "404.html" --index-document "index.html"
