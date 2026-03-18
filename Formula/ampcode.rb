class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773857740-g14b55c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773857740-g14b55c/amp-darwin-arm64"
      sha256 "fc3c2d8f40c7a844282ea697a5594f71dcc3de6f8390a23f4c094be775923606"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773857740-g14b55c/amp-darwin-x64"
      sha256 "dbef60398dd209b56ae7952da2f113327fbac7bd33c6c59e04febe17c959e9b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773857740-g14b55c/amp-linux-arm64"
      sha256 "1bdb43bca4b36a266685b5780f8ae1844d010db603c9199f35a467f47fa3ffdd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773857740-g14b55c/amp-linux-x64"
      sha256 "75250b7f18968d8d5c7b1f34dea601d424045107a400285a0f3779e844cb783c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
