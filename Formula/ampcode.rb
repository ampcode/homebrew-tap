class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794268864-g13d0b0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794268864-g13d0b0/amp-darwin-arm64"
      sha256 "c003422c3251078d2a4366c13ec70cdbca8060bb15833ce8d256a0db9c5364b9"
    else
      url "https://static.ampcode.com/cli/0.0.1794268864-g13d0b0/amp-darwin-x64"
      sha256 "f3670aaa28245bf55801478c13ac3a15c5037932d64293b5614092b32dac4095"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794268864-g13d0b0/amp-linux-arm64"
      sha256 "0df2269d49f4812d3625221b7ac0e6a56b37ea2d2ed7b6f60fa9ca47069dd2da"
    else
      url "https://static.ampcode.com/cli/0.0.1794268864-g13d0b0/amp-linux-x64"
      sha256 "90e7a16f9722bf8c921a5ae32b9f7bb6b4524337630441688e86353bd5972fcc"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
