require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     'AKIAJAFVSWEDCVXPBRVQ',                        # required unless using use_iam_profile
      aws_secret_access_key: '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',    # required unless using use_iam_profile

  }
  config.fog_directory  = 'gargantua-bbq-bucket'                                      # required
  config.fog_public     = true                                                 # optional, defaults to true
  config.fog_attributes = { } # optional, defaults to {}
end
