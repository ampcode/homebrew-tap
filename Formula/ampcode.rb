class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782727587-g7c8664"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782727587-g7c8664/amp-darwin-arm64"
      sha256 "3cf52fcdf8ed7da1a3a26d4d3007fa27d0bb4ffb634fa51a4f123caa39adea34"
    else
      url "https://static.ampcode.com/cli/0.0.1782727587-g7c8664/amp-darwin-x64"
      sha256 "bdbb6d0f6bfa4cebf3f8ada50180524d031023bca87e1afcb9976c3a270ad36a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782727587-g7c8664/amp-linux-arm64"
      sha256 "b6cd9faa96434d181e600c7cf48930e6f9a82983598d20fb0cc9e360dce64d21"
    else
      url "https://static.ampcode.com/cli/0.0.1782727587-g7c8664/amp-linux-x64"
      sha256 "a94e99349ad90e65e6ac04b3345e47716716de649e5191a58724e135dc27be5b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
