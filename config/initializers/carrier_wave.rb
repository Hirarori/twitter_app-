if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-southeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAV4MNDWRRAZKCRMFR'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['yutanatori']
  end
end