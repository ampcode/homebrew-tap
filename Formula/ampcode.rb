class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1795824057-g926f24"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795824057-g926f24/amp-darwin-arm64"
      sha256 "68ce840fd4de6f3dbddaf0de03c5700e3f91552953c27bf64dca52a39390fdc4"
    else
      url "https://static.ampcode.com/cli/0.0.1795824057-g926f24/amp-darwin-x64"
      sha256 "cf71197af73fa2e1cd185df8c02c3012a6910ba0485fa77b07787a2b4ffa1814"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1795824057-g926f24/amp-linux-arm64"
      sha256 "823064558a9f6cdfacb720f7dd2c664e7299b8f2310693d84f22f88d5191d7e1"
    else
      url "https://static.ampcode.com/cli/0.0.1795824057-g926f24/amp-linux-x64"
      sha256 "20b516f41ab076db3490110080e6fd3994594d5a5bcc437ffecc45ff000962ea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
