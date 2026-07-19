class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784492094-g5d18e2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784492094-g5d18e2/amp-darwin-arm64"
      sha256 "508538e7c713b930a5e6aaeff6b3809085bbb9b8879c1e18a73762c2cfc91a87"
    else
      url "https://static.ampcode.com/cli/0.0.1784492094-g5d18e2/amp-darwin-x64"
      sha256 "e26a86ede999af054d5605eddab703654d4c5393322521825aa2da9768da6bb9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784492094-g5d18e2/amp-linux-arm64"
      sha256 "32ca0df8fe8354cac4a4e5993edcc2ad42299bc9aa431d30d61a69d0d14a33af"
    else
      url "https://static.ampcode.com/cli/0.0.1784492094-g5d18e2/amp-linux-x64"
      sha256 "5e65f9148cbbaa067afd71dcf3402b1a76a4d12937e057357142536979b42884"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
