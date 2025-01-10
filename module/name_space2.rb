module Baseball
  class File
  end

  class Second
    def file_with_nesting
      puts File
      puts ::File #入れ子ありのクラス定義で組み込みライブラリのFileクラスを参照する
    end
  end
end

class Baseball::Second
  def file_without_nesting
    puts File
    puts Baseball::File #入れ子なしのクラス定義は明示的に名前空間を付ける必要あり
  end
end

second = Baseball::Second.new
second.file_with_nesting
second.file_without_nesting
