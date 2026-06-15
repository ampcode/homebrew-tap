class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781534992-g755969"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781534992-g755969/amp-darwin-arm64"
      sha256 "e0b28c9fd8b216df50abf979fbc9a62def12b8f190c49d4ce0c436b1a37818b5"
    else
      url "https://static.ampcode.com/cli/0.0.1781534992-g755969/amp-darwin-x64"
      sha256 "1ccbd06bf7045b0e3e1272543acc744b592026ecd6710d53b142697d23bad0e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781534992-g755969/amp-linux-arm64"
      sha256 "9d9a674b840010a5d086bc0828ccdaec11ae2f62a6b30eeeb6e74f8cc4561583"
    else
      url "https://static.ampcode.com/cli/0.0.1781534992-g755969/amp-linux-x64"
      sha256 "fd2c200d8f75d02d8aac1c576b4fec9f569e56a43e616f80fc0bc3fbc7490a4a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
