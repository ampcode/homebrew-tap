class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789000905-g58d041"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789000905-g58d041/amp-darwin-arm64"
      sha256 "93c4e717a06a06150329f0615dabe77327ccfe94f8516245632712deebb35177"
    else
      url "https://static.ampcode.com/cli/0.0.1789000905-g58d041/amp-darwin-x64"
      sha256 "f9a947b5a2915426c10ac90622750cf9bc9972a38f9546335bece2e2432a3667"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789000905-g58d041/amp-linux-arm64"
      sha256 "50b076fe7c98563d9476b96d1d6f6ea75e19e93a1010c64627246ca487579afe"
    else
      url "https://static.ampcode.com/cli/0.0.1789000905-g58d041/amp-linux-x64"
      sha256 "fd71588b0c85cbc838fc004964e680398c418d442cf26dabb14e23d440125c4b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
