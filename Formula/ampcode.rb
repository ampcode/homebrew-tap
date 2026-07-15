class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784084982-g029ec3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784084982-g029ec3/amp-darwin-arm64"
      sha256 "5180b5616ed10494ed03821a37e280404f94d9c783f62a579e3b94451136eede"
    else
      url "https://static.ampcode.com/cli/0.0.1784084982-g029ec3/amp-darwin-x64"
      sha256 "56b9644bb27774a4c6839f8e13fc8d4899982810961c22038279ebcc118dc87f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784084982-g029ec3/amp-linux-arm64"
      sha256 "f899a25d34f3c0dcf7c04653593a9551e1cc65676f3979a5ad75be30a9e68510"
    else
      url "https://static.ampcode.com/cli/0.0.1784084982-g029ec3/amp-linux-x64"
      sha256 "8c68134b0d749577e2ad32a80acba49d7db31c095a2f2f2dea10b6f733c1207e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
