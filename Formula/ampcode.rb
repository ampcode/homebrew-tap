class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775277155-g71eabb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775277155-g71eabb/amp-darwin-arm64"
      sha256 "9d34ed2a5f8b0e9416b5587870cf2ac0db0cf5020a9867fa859cc2bafc9e1d25"
    else
      url "https://static.ampcode.com/cli/0.0.1775277155-g71eabb/amp-darwin-x64"
      sha256 "0ac924dba23b7271065ea4e309f6504a96d1efec911840b2d712d4be4b2ab490"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775277155-g71eabb/amp-linux-arm64"
      sha256 "e21b9cdfb83629a130d6759ec9e6b7b2719fc9647ae78e421246bcd3ac6351d4"
    else
      url "https://static.ampcode.com/cli/0.0.1775277155-g71eabb/amp-linux-x64"
      sha256 "9133d1bb92fb7537a42939cb73ac2d0bd6bdba6831d90b30895e6c5565e725e7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
