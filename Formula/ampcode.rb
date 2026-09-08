class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788868861-g921679"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788868861-g921679/amp-darwin-arm64"
      sha256 "80195e2ddfa0a6dbb165d69737f1dff1b28608d7f85785a5874217242306ae60"
    else
      url "https://static.ampcode.com/cli/0.0.1788868861-g921679/amp-darwin-x64"
      sha256 "df840e17fdae6a0f39a4f44299937014ad22b3744fa05e053ff1a4a2464c4ac6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788868861-g921679/amp-linux-arm64"
      sha256 "7decb100a9d445d451ce36016bb636ad35d7c8eef4cc7428ede28d36c2d126d6"
    else
      url "https://static.ampcode.com/cli/0.0.1788868861-g921679/amp-linux-x64"
      sha256 "db4c93e51efc1326a78505e6a4cfb7e8a1c34bc83f389b1623ba6764e427ffc5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
