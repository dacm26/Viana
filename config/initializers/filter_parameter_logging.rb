# Be sure to restart your server when you modify this file.

# Configure sensitive parameters which will be filtered from the log file.
Rails.application.config.filter_parameters += [:password]
Viana::Application.config.secret_key_base = 'a5f82fc2383fed32eb7c3a1dda060961f201b9f48c9978d00c63f8b38fcb6faee8fee9e872fbd94af7e131e678dd7f2a128c2e2daf759e6e0d11046e1e828d3d'

