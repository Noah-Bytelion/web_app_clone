if Rails.env.production?
  CarrierWave.configure do |config|
    config.root = Rails.root.join('tmp') # adding these...
    config.cache_dir = 'carrierwave' # ...two lines
    config.fog_credentials = {
      #configuration for Amazon S3
      :provider => 'AWS',
      :aws_access_key_id  => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key  => ENV['S3_ACCESS_KEY']
    }
    config.fog_directory = ENV['S3_BUCKET']
#    config.fog_provider = 'fog/aws'
end
end

#note: when the AWS storage is set up, the following commands still need to be run:
# $heroku config:set S3_ACCESS_KEY=<access key>
# $heroku config:set S3_SECRET_KEY=<secret key>
# $heroku config:set S3_BUCKET=<bucket name>
