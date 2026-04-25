class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777125340-g8ffe68"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777125340-g8ffe68/amp-darwin-arm64"
      sha256 "84e8ac0a5c9251dd1c5c965297b703a858a07a10e8d53db81fc7ecea21d0a0d4"
    else
      url "https://static.ampcode.com/cli/0.0.1777125340-g8ffe68/amp-darwin-x64"
      sha256 "e17450961c535b2fc3b82f08a3f16cd716c78cdd7072cb815984708915b0b0bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777125340-g8ffe68/amp-linux-arm64"
      sha256 "0fff242f313bb6e4e4fd61085eb0f1e4c5b4d4409a09c8001464f5cd6da2e54d"
    else
      url "https://static.ampcode.com/cli/0.0.1777125340-g8ffe68/amp-linux-x64"
      sha256 "f04ed3cb20d86fe6e16cec7089e88786b84cf0f5c428b1830e929aeaea2a33ce"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
