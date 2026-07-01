class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782924291-geeacbf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782924291-geeacbf/amp-darwin-arm64"
      sha256 "7f0a311f9a0f6c71a007be6fb04d1a8f8f8daccd01ae4d019800f7fbb15d032e"
    else
      url "https://static.ampcode.com/cli/0.0.1782924291-geeacbf/amp-darwin-x64"
      sha256 "f3ed007986c4ad87dd584f3d16347f4d5d76c8e27cc64be5215a572b6fd90fdd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782924291-geeacbf/amp-linux-arm64"
      sha256 "a01167e28462fabba21d5b27fd1f444c14dd8cebf375d892779adda5254b752a"
    else
      url "https://static.ampcode.com/cli/0.0.1782924291-geeacbf/amp-linux-x64"
      sha256 "2e000f7134ee1975558a45ce97535a412c2597976035ca60da463d67482b347f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
