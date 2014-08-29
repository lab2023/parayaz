require "parayaz/version"

module Parayaz
  def parayaz
    number = self

    price, cents = number.to_s.split('.').map(&:to_i)

    text = convert_to_text(price) + 'TL'

    text += ',' + convert_to_text(cents) + 'kr' if cents

    text
  end

  private
    def say_1_digit_text(n)
      one_digits_text = ['', 'bir', 'iki', 'üç', 'dört', 'beş', 'altı', 'yedi', 'sekiz', 'dokuz']
      one_digits_text[n]
    end

    def say_2_digit_text(n)
      two_digits_text = ['', 'on', 'yirmi', 'otuz', 'kırk', 'elli', 'altmış', 'yetmiş', 'seksen', 'doksan']
      two_digits_text[n[0]] + say_1_digit_text(n[1])
    end

    def say_3_digit_text(n)
      one = n[0] == 1 ? 'yüz' : say_1_digit_text(n[0])
      one += 'yüz' unless n[0] == 1 || n[0] == 0
      n.delete_at(0)
      one + say_2_digit_text(n)
    end

    def convert_to_text(number)
      lots = ['', 'bin', 'milyon', 'milyar', 'trilyon', 'katrilyon', 'kentilyon', 'seksilyon', 'septilyon']

      text = ''

      i = 0
      while !number.zero?
        number, r = number.divmod(1000)
        size = r.to_s.split('').map(&:to_i).size
        new_text = r == 1 && i == 1 ? "" : eval("say_#{size}_digit_text(#{size == 1 ? r : r.to_s.split('').map(&:to_i)})")

        unless r == 0
          new_text += lots[i]
        end

        text = new_text  +  text
        i += 1
      end
      text
    end
end

class Numeric
  include Parayaz
end
