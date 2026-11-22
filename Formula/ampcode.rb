class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795305655-gf675ab"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795305655-gf675ab/amp-darwin-arm64"
      sha256 "9ad47ad41d2e55e26d031ff5e981760534b5d200a09987c0bb254dda6e222368"
    else
      url "https://static.ampcode.com/cli/0.0.1795305655-gf675ab/amp-darwin-x64"
      sha256 "35db3bcbbb381a11aec74ae9314e3a77b85bb1f8de286b222296bd9fb589e2f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795305655-gf675ab/amp-linux-arm64"
      sha256 "166ebdd967de99fad8d8cf2f4063f6ab7180dd57ea5c90aa1fad13c0dd1fa566"
    else
      url "https://static.ampcode.com/cli/0.0.1795305655-gf675ab/amp-linux-x64"
      sha256 "76356c768d85e89cea7866a1388f8b0d403e95e9baa351468d245bf9034cd4c1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
