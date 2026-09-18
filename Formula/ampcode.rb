class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789750518-g64beac"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789750518-g64beac/amp-darwin-arm64"
      sha256 "11d1ebb0dcddbeca7ddcfbb97c73716eb9d0168c1f34dad624628777bb0ae550"
    else
      url "https://static.ampcode.com/cli/0.0.1789750518-g64beac/amp-darwin-x64"
      sha256 "22054d00c4f1239c5cd9b2cfffe9c04a95f90199b62dc556c4fa3a6cff72a930"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789750518-g64beac/amp-linux-arm64"
      sha256 "6ac1bd1f0b6226f6748a2012073620afbd6210c9481726072f38d8cc0557669d"
    else
      url "https://static.ampcode.com/cli/0.0.1789750518-g64beac/amp-linux-x64"
      sha256 "cb613fc10b8464938489dc2688ff712a09a14cd0915f9957992aa28d9b20f265"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
