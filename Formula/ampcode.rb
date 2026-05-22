class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779469266-geb3cba"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779469266-geb3cba/amp-darwin-arm64"
      sha256 "78cd865f940888fd817a97f4cd0781be44e99e1fd84655bf6bb9f9bb4551ef8b"
    else
      url "https://static.ampcode.com/cli/0.0.1779469266-geb3cba/amp-darwin-x64"
      sha256 "28d442b3a83013ff7f2ccf6ac03ee78483750615474a3861b1b69be406b33a5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779469266-geb3cba/amp-linux-arm64"
      sha256 "21b41c21c0a1317c8783c8251de87960c86cf2f86e4e805805bb5ecb672d9a8a"
    else
      url "https://static.ampcode.com/cli/0.0.1779469266-geb3cba/amp-linux-x64"
      sha256 "36156a4c3b7e250f7be53884c1c1479ddeba945e9be54455ccb44b2cde54f4b7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
