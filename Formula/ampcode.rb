class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773246364-gc0add7"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773246364-gc0add7/amp-darwin-arm64"
      sha256 "f2f7bdfb58e1e204c11b04d713c884c39ce7dbf83788c28efed3abb7296267a1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773246364-gc0add7/amp-darwin-x64"
      sha256 "01cbccc08fdf0eff1f6afe7ad0b1a937880fba108a37f84ce29217710056df3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773246364-gc0add7/amp-linux-arm64"
      sha256 "5e864ec1201d5d1905798eb75f4ba26ccdf8e491218e287c251e36da77e70c3b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773246364-gc0add7/amp-linux-x64"
      sha256 "2c677d63579713df3710e8619e5baadb0a5087ee60229c55a40c1e4b816d7c6b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
