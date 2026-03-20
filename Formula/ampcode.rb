class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774008262-g36d53c"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774008262-g36d53c/amp-darwin-arm64"
      sha256 "dd8a8d07430fae53f4bd62b36a128019b1a0474b6900a1d42ca4b126dda3060c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774008262-g36d53c/amp-darwin-x64"
      sha256 "aff870a80566dd906264be2cf5e28e01f76a4cfd2ebedebf427fbc45e46cf897"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774008262-g36d53c/amp-linux-arm64"
      sha256 "361618ecbc3e7c499790005eede176658898f516edfa25c5da80fe25d3a794fb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774008262-g36d53c/amp-linux-x64"
      sha256 "41147774fc6c3eaad6cbd7f17fd9b49f535c398e013a9df41c70f9d8a5e35ee7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
