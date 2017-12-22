# Make VIM in Windows with Chinese

## 0. Font in console setting
首先，為了改變微軟難看的新細明體，我上網找到一款適合開發使用的字體[YaHei Consolas](YaHei Consolas Hybrid 1.12.ttf)
為了使用雅黑體，需要先改變shell的編碼，預設CodePage可以使用chcp來查詢，Ex:950-Big5
而雅黑體所需使用之編碼為utf-8，CodePage=65001
可使用下列兩種方式更改預設CodePage
-將指令`chcp 65001`存入bat檔中預設呼叫即可
-進登入檔(regedit.exe)，在`電腦\HKEY\_CURRENT\_USER\Console\%System32\_cmd.exe`新增一組類型為REG\_DWORD的資料名稱為CodePage，而值為十進位之65001

## 1. Download VIM
因為許多Plugin需要用到Python,Lua等Script Language，因此建議使用有支援的版本。而取得有支援的版本不外乎兩種方法:一為找尋現成資源，二為自行編譯產生。
方便起見，這邊為官方github的載點:
[https://github.com/vim/vim-win32-installer/releases](https://github.com/vim/vim-win32-installer/releases)

## 2. Download Vundle
由於VIM的Plugin實在太多了，一個個下載顯然不是個有效率的做法。因此我們需要有個插件管理的插件。其實Plugin Manager有很多種可以選擇，其中最有名的便是Vundle與Pathogen了。
而要使用Vundle首先你得把[這個檔案](https://github.com/VundleVim/Vundle.vim)下載下來，放到$HOME/.vim/bundle下，$HOME指得是你所使用的使用者之Home Directory。
下載完成後你得進行必要之設定，首先，需要在$HOME下建置一個\_vimrc並在開頭加入以下內容
```vim
set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/Vundle.vim')
filetype plugin indent on

Plugin '這邊填入所需之插件'

call vundle#end()
filetype plugin indent on 
```
搭配著:PluginInstall等指令，就可以達到插件管理的成果了。
目前先寫到這，有新發現再補。


