class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791446565-g95411c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791446565-g95411c/amp-darwin-arm64"
      sha256 "caf6876bb7c9451c10e158a37d8b78b056bbe41c9a8162cb4a2cfc5c02b42914"
    else
      url "https://static.ampcode.com/cli/0.0.1791446565-g95411c/amp-darwin-x64"
      sha256 "3cc24b3878a8519c33f004446593a4b41818d1a4981c42da3050f662cfb3c0ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791446565-g95411c/amp-linux-arm64"
      sha256 "6dc871dcb939a3d77b9f6787a46c77709ffcc31c24834bed3d05a955dead0cb1"
    else
      url "https://static.ampcode.com/cli/0.0.1791446565-g95411c/amp-linux-x64"
      sha256 "416258b4aacca076cd26b1a0d645c0e19b98a9c4d50baaa6298688da61c9fdcf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
