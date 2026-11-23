class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795464043-gc7cddb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795464043-gc7cddb/amp-darwin-arm64"
      sha256 "f328466f98e92b3c53a4f4458df67af85e0603488bf19973f618be6aed54c537"
    else
      url "https://static.ampcode.com/cli/0.0.1795464043-gc7cddb/amp-darwin-x64"
      sha256 "74d0eea0d02fd0483eb6444c991fae6b0edd3b72d0e9cd7e1997f01cd06bba35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795464043-gc7cddb/amp-linux-arm64"
      sha256 "ce3393efa1cfa727352d77a1916a1d6acc629c7de0feb0b240b1f74936d0538d"
    else
      url "https://static.ampcode.com/cli/0.0.1795464043-gc7cddb/amp-linux-x64"
      sha256 "170dba591a842066f5207aa73e68c11fea3cc26a59f4e9538f244f0ab07f9119"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
