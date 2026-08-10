class Boo < Formula
  desc "Ghostty configuration TUI interface"
  homepage "https://github.com/cobyism/boo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cobyism/boo/releases/download/v0.1.0/boo_0.1.0_darwin_arm64.tar.gz"
      sha256 "32b4c4bc4460de1ddee438c206a31378ceb290952555ec8287cbdaa502cc232b"
    end
    on_intel do
      url "https://github.com/cobyism/boo/releases/download/v0.1.0/boo_0.1.0_darwin_amd64.tar.gz"
      sha256 "5f3310fb7261ffa6fabc2bdeb3763544483c5762048f711b07f9f14487f44af7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cobyism/boo/releases/download/v0.1.0/boo_0.1.0_linux_arm64.tar.gz"
      sha256 "2d4dd2c66dc9820c191622e44a5368e3f87619f94aacaaa6e649485b790e00de"
    end
    on_intel do
      url "https://github.com/cobyism/boo/releases/download/v0.1.0/boo_0.1.0_linux_amd64.tar.gz"
      sha256 "6cd74626fea460a5af3cc511059539869746f1cffb5a832f173cbf0b4fd43ac5"
    end
  end

  def install
    bin.install "boo"
  end

  test do
    assert_match "boo", shell_output("#{bin}/boo --version")
  end
end
