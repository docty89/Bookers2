require 'test_helper'

class DailyMailerTest < ActionMailer::TestCase
  test "daily_notification" do
    mail = DailyMailer.daily_notification
    assert_equal "Daily notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
