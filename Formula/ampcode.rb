class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790553713-gdc78d4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790553713-gdc78d4/amp-darwin-arm64"
      sha256 "630cfb12000835d842f92a2bd4d628bd3aa828bcf71b0f41c109e035a5bb68e5"
    else
      url "https://static.ampcode.com/cli/0.0.1790553713-gdc78d4/amp-darwin-x64"
      sha256 "eca48cf25105e968d0f38c00f913b4094f0174f1ad8e86f20e1df2ca65412e9b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790553713-gdc78d4/amp-linux-arm64"
      sha256 "d36c45a45c82767b19e99dc12808904b339fcfae7f010a9728652c7492a4df99"
    else
      url "https://static.ampcode.com/cli/0.0.1790553713-gdc78d4/amp-linux-x64"
      sha256 "42c12973e73df090aed401c0e04132e69f2c38ceb23c6b79b4a31bd5a24cd39a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
