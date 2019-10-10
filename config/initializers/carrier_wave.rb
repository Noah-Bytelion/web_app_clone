if Rails.env.production?
  CarrierWave.configure do |config|
    config.root = Rails.root.join('tmp') # adding these...
    config.cache_dir = 'carrierwave' # ...two lines
    config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :s3_access_key_id      => ENV['S3_ACCESS_KEY'],                        # required
      :s3_secret_access_key  => ENV['S3_SECRET_KEY'],                     # required
      :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
      :host                   => 's3.example.com',             # optional, defaults to nil
      :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
    }
    config.fog_directory = ENV['S3_BUCKET']
#    config.fog_provider = 'fog/aws'
end
end

#note: when the AWS storage is set up, the following commands still need to be run:
# $heroku config:set S3_ACCESS_KEY=<access key>
# $heroku config:set S3_SECRET_KEY=<secret key>
# $heroku config:set S3_BUCKET=<bucket name>



# 
#   config.fog_directory  = ENV['S3_Bucket']                             # required
#   config.fog_public     = false                                   # optional, defaults to true
#   config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
# end
