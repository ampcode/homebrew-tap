class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779729291-gfe2d7f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779729291-gfe2d7f/amp-darwin-arm64"
      sha256 "07ab1fb5e20aec20f8add5c70570e66a65210f1dc7f2e106aa22751c771db1a3"
    else
      url "https://static.ampcode.com/cli/0.0.1779729291-gfe2d7f/amp-darwin-x64"
      sha256 "f376cf32ffbe19ce02602855c351305ddf2f3704b2145b3f30499f026e17e31b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779729291-gfe2d7f/amp-linux-arm64"
      sha256 "158b250893df1ab1aeb324b5f5250c84845c8a9fdb885c07b9f48080820fb942"
    else
      url "https://static.ampcode.com/cli/0.0.1779729291-gfe2d7f/amp-linux-x64"
      sha256 "4faec5fe4de9e425104d7f2f5c0b819ada4b0c0348517693cd507f953c979083"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
