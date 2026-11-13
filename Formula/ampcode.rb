class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1794528069-g919feb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794528069-g919feb/amp-darwin-arm64"
      sha256 "40cef218543bc4c1b6e4c5e6b6653175db3b5c69b3f9e035e01a7b6a11d2fc0c"
    else
      url "https://static.ampcode.com/cli/0.0.1794528069-g919feb/amp-darwin-x64"
      sha256 "23898c1ab18cc550b7ca8f3abd1a83283c75dfc56ee07d04b0cbea76a959e1c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1794528069-g919feb/amp-linux-arm64"
      sha256 "137294f9623055acb833310ee22927ef1f2e4552e96b84777fff31cae6ff0512"
    else
      url "https://static.ampcode.com/cli/0.0.1794528069-g919feb/amp-linux-x64"
      sha256 "02fe374e85ab85a8c922669c1e660127c036ef82e4696ff21f578900bb2eca7c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
