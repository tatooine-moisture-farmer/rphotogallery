class User < ActiveRecord::Base
acts_as_authentic
apply_simple_captcha

end
