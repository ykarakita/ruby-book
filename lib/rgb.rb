def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
  # hex.scan(/\w\w/) # 変数hexを2文字区切りのリストにする
  # .map # リストをループさせてそれぞれの戻り値を新しいリストに格納
  # (&:hex) # hexメソッドを呼び出す
end