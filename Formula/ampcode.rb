class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769976097-ge8c96c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769976097-ge8c96c/amp-darwin-arm64"
      sha256 "2accd13e317dc3feb7410cc294478bb05fc25f9657e1da5ef0859273b43093ca"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769976097-ge8c96c/amp-darwin-x64"
      sha256 "fcf8e8a36ade434e0e360ae1780fe1bbdd801890d81dbfacf6da17eb256e3bdf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769976097-ge8c96c/amp-linux-arm64"
      sha256 "10d447b0c38b82f6382b3649067ce8d587eb6a8f644d6df1e2273cea8d07a670"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769976097-ge8c96c/amp-linux-x64"
      sha256 "46072811df322682aadbbe4fe03dd4a81aa983ac22f81c0101b3b96f2a6b26da"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
