class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778678555-g30f26b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778678555-g30f26b/amp-darwin-arm64"
      sha256 "11bb199e78740e63f60b562b00ae9444263603fd66f4ed0e11f3ca3730cef720"
    else
      url "https://static.ampcode.com/cli/0.0.1778678555-g30f26b/amp-darwin-x64"
      sha256 "578e96cebfc88898313e71d857d134c3d618ed54fd97dcf30db30f1adb788dcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778678555-g30f26b/amp-linux-arm64"
      sha256 "9eb49568b64b81f828088b3c221c873dc1db56c1d078f23bf0cd89c5817019dd"
    else
      url "https://static.ampcode.com/cli/0.0.1778678555-g30f26b/amp-linux-x64"
      sha256 "00d2bd77f307bca267211a2a31cd85e752e8c8538dcb521a6b4d31f4f670d042"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
