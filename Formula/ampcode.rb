class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784146780-g3f5892"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784146780-g3f5892/amp-darwin-arm64"
      sha256 "f6a510e6d7e19a984690005b3d78c73e7c7a6f5ad7c211a0a7ff4b677ce37078"
    else
      url "https://static.ampcode.com/cli/0.0.1784146780-g3f5892/amp-darwin-x64"
      sha256 "ac5f918ea4c1d2b9af18731a60856286b613021cc6213385bb6aaa77db2007ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784146780-g3f5892/amp-linux-arm64"
      sha256 "173903c09f33baaf87b45bed46e94b099b302d96bb4cfd5f80a21e27a4bdddcf"
    else
      url "https://static.ampcode.com/cli/0.0.1784146780-g3f5892/amp-linux-x64"
      sha256 "5b5950f7080c0325660c1bfcf59da73535c9a37e078d44c490adcdbcf77baff3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
