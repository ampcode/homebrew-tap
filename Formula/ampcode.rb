class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769765269-g9130fe"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769765269-g9130fe/amp-darwin-arm64"
      sha256 "68aa62bc993b878d5bd2bdc2061e7fef0fc1d492119f40f96772f75ee351bbb4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769765269-g9130fe/amp-darwin-x64"
      sha256 "e0a395306677189452ce6a22244bc31556ee563a60cc28905facf9b11462b9f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769765269-g9130fe/amp-linux-arm64"
      sha256 "89a01fd5d1754db41486d086edf7df72c50f3b1c944a29b47e93d7a68bb92911"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769765269-g9130fe/amp-linux-x64"
      sha256 "89bc49d35dfc983a1e0572f1acc77115f2d54e1fdd4a5d9538b030b851a09b02"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
