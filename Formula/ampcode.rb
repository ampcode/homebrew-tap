class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779252847-g950731"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779252847-g950731/amp-darwin-arm64"
      sha256 "e218602f18ceb956177c29bca7d5ea77e493f06e71ef34e2110dbc6ef30764ae"
    else
      url "https://static.ampcode.com/cli/0.0.1779252847-g950731/amp-darwin-x64"
      sha256 "05a914d3936eeb49107d0032ea42483f6cb94915a3033c0b5afaf2ea1540fdca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779252847-g950731/amp-linux-arm64"
      sha256 "32c3727c276e7b206e6f5cb79c157cd0d706ef4f2fb8079a6b7fa95e615877c1"
    else
      url "https://static.ampcode.com/cli/0.0.1779252847-g950731/amp-linux-x64"
      sha256 "1d73f2e499435170fd25abecf202dcb883ff35d57823d907997331dfafff340a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
