class Check < ApplicationRecord
    validates :title, presence: true, length: { maximum: 20 }
    validates :startday,  presence: true 
    validates :finishday, presence: true
    validate :finishday_in_future 
    validate :startday_in_past
    validates :memo, length: { maximum: 500}
    def finishday_in_future
      if finishday.present? && finishday < Date.today || finishday < startday
        errors.add(:finishday, "を開始日または本日の日付より後の日付を選んでください")
      end
    end
    def startday_in_past
        if startday.present? && startday < Date.today
          errors.add(:startday, "を本日の日付より後の日付を選んでください")
        end
      end
end
