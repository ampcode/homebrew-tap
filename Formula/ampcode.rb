class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793635240-gf2548c"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793635240-gf2548c/amp-darwin-arm64"
      sha256 "e3956fd5bf3200447ca9d184688652beb27b677e2b503e7c1e1580d1f1895978"
    else
      url "https://static.ampcode.com/cli/0.0.1793635240-gf2548c/amp-darwin-x64"
      sha256 "7e00d5753e70f5c13e2f7bbd90ca3063d2131f7837155d98790497120714b6d8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793635240-gf2548c/amp-linux-arm64"
      sha256 "61036abf650c6ffb353854bbd36f2e0e40228dbe87f405658b3b0fbb380bbf97"
    else
      url "https://static.ampcode.com/cli/0.0.1793635240-gf2548c/amp-linux-x64"
      sha256 "88141a08f2716b6b577f092baae8c65ff00e38a62b5fdcf7a92454b2af12d60f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
