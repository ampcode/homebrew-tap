class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793419243-g67cb09"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793419243-g67cb09/amp-darwin-arm64"
      sha256 "f9e9db4d9741d2e859744d77722a6edbdaf2e07ebba1401f8bef4171af93f840"
    else
      url "https://static.ampcode.com/cli/0.0.1793419243-g67cb09/amp-darwin-x64"
      sha256 "88ae5d390f12234b0e2938a97e6859b533954d7648f7fdb717080d7c3c88d12a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793419243-g67cb09/amp-linux-arm64"
      sha256 "7a2bb2c71e9a0875acc501201fccc2d32146bc74fc2194b0facbfd59b96adfaa"
    else
      url "https://static.ampcode.com/cli/0.0.1793419243-g67cb09/amp-linux-x64"
      sha256 "9eb3eca2581c125c0d654ea78acd39efb114882af116ab95d3e30de203822b0a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
