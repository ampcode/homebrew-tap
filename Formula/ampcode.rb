class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773075711-g03eeb8"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773075711-g03eeb8/amp-darwin-arm64"
      sha256 "4c4c8780a27b5828692b443048a75ce9cc23efd5fdf4dadb2d803151c594feaa"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773075711-g03eeb8/amp-darwin-x64"
      sha256 "b7d04c12e5025673b32ee41db1e6135f1dab9846e996d19935d303cb9284b2dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773075711-g03eeb8/amp-linux-arm64"
      sha256 "a7f0989205b5dd3e429c5d501cd3bd504c911d185b3358b0f133ab2e6881ecee"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773075711-g03eeb8/amp-linux-x64"
      sha256 "96a56806a868ee6cbdff2407f3d5fa3069cf344a9466fd075225c17bba6e2246"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
