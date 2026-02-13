class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770941101-ga35def"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770941101-ga35def/amp-darwin-arm64"
      sha256 "1f756ef9f7daa4abcd056d5d5dd9abbb93fdbdcd8c6ed99380cb9477ebc0eca1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770941101-ga35def/amp-darwin-x64"
      sha256 "42a92460525eebd6785660690134bbc30a4ac3668d598480fc22bcebe49527ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770941101-ga35def/amp-linux-arm64"
      sha256 "38a77f7e0840e324fc23b4d7d3e2c1b56e434d764cf2e0cfcdb780512f2a5537"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770941101-ga35def/amp-linux-x64"
      sha256 "14af4e9f636009edf062d4b818e579430daf75b7afec13941c5572064ba067ff"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
