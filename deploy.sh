cd s3_copy_file
chmod +x extension.py
pip install -r requirements.txt
cd ..

chmod +x extensions/s3_copy_file
7z -r extension.zip .

aws lambda publish-layer-version \
  --layer-name "s3_copy_file" \
  --compatible-runtimes python3.12 \
  --region eu-north-1 \
  --zip-file  "fileb://extension.zip"
