class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784232995-gb305b4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784232995-gb305b4/amp-darwin-arm64"
      sha256 "64f22352971de8c814498997490d859f6ef1840edcc08e11f07711c20fa1805a"
    else
      url "https://static.ampcode.com/cli/0.0.1784232995-gb305b4/amp-darwin-x64"
      sha256 "73180f2336328004f9250a9352243a8a0702d67909ab7ce6a20bcd1c6b413e3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784232995-gb305b4/amp-linux-arm64"
      sha256 "473acb16028c2ba3c712470a5bf6adc1d44648a99e52d0587ac94222d487fb9d"
    else
      url "https://static.ampcode.com/cli/0.0.1784232995-gb305b4/amp-linux-x64"
      sha256 "2321b37894bbc8363867db6ba07daa365a43433567479fb8f7d13898c15d17d4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
