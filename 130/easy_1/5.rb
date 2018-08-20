


def decipher(names)
  names.map do |one_name|
    decipher_string(one_name)
  end
end

def decipher_string(str)
  words = str.split.map do |word|
    word.chars.map {|chr| decipher_letter(chr)}.join
  end
  words.join(" ")
end

def decipher_letter(str)
  new_str = ((((str.downcase.ord - 97) + 13) % 26) + 97).chr
  new_str.upcase! if ("A".."Z").include? str
  new_str
end

names = ["Nqn Ybirynpr",
"Tenpr Ubccre",
"Nqryr Tbyqfgvar",
"Nyna Ghevat",
"Puneyrf Onoontr",
"Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv",
"Wbua Ngnanfbss",
"Ybvf Unvog",
"Pynhqr Funaaba",
"Fgrir Wbof",
"Ovyy Tngrf",
"Gvz Orearef-Yrr",
"Fgrir Jbmavnx",
"Xbaenq Mhfr",
"Fve Nagbal Ubner",
"Zneiva Zvafxl",
"Lhxvuveb Zngfhzbgb",
"Unllvz Fybavzfxv",
"Tregehqr Oynapu"]

p decipher(names)

