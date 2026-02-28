class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772252608-ga0ba92"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772252608-ga0ba92/amp-darwin-arm64"
      sha256 "cd44c5b14c05ff476511617784d898233e40e5823bd4d784ba506ab1a302ffa3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772252608-ga0ba92/amp-darwin-x64"
      sha256 "9aded350647990d81ab1aa6ccb24e7024a42b45536f1500f4a7d88ae4acb8bc1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772252608-ga0ba92/amp-linux-arm64"
      sha256 "13250b284bfd31954b0c75a87fc5e8b30e070e2d24ce44b1e7ee59ee65147289"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772252608-ga0ba92/amp-linux-x64"
      sha256 "f79f3d92431bf5ccbe244675a0375b41d42181d2cef7d737d8a0d12c6ff94c36"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
