build-S3CopyFile:
	cp ./s3_copy_file/* $(ARTIFACTS_DIR) -r

	chmod +x $(ARTIFACTS_DIR)/extensions/s3_copy_file_python
	chmod +x $(ARTIFACTS_DIR)/s3_copy_file_python/extension.py

	pip install -r $(ARTIFACTS_DIR)/s3_copy_file_python/requirements.txt --target $(ARTIFACTS_DIR)/s3_copy_file_python 