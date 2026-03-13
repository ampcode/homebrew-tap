class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773416742-gfc6b34"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773416742-gfc6b34/amp-darwin-arm64"
      sha256 "7a8e53082969e3925fc34103cd6ca0fe79b1b636cbfa7b6c809b6e06fbaf63c1"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773416742-gfc6b34/amp-darwin-x64"
      sha256 "1adedbe290b59d3ef6d286fac47f1a3a38e933e465582efc922f167b7c54955a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773416742-gfc6b34/amp-linux-arm64"
      sha256 "b45069b48c50cccd6c3a5fb8e4255dc565030fd71457dc49d70ec5bd038e2641"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773416742-gfc6b34/amp-linux-x64"
      sha256 "5673c4829f79817c21bb9b793cbf3f56a8af5bca827f6605020e3a5b487a991e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
