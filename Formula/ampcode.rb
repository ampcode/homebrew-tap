class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779167780-g914a47"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779167780-g914a47/amp-darwin-arm64"
      sha256 "be13180c9ed37d98c4efe90869b32b2c9c9767036205f0ea7e3f515fd87395bf"
    else
      url "https://static.ampcode.com/cli/0.0.1779167780-g914a47/amp-darwin-x64"
      sha256 "4187ee5a02d9f3f4d867402d55f79eb5112545a6c0edc827df1a3c051b035c83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779167780-g914a47/amp-linux-arm64"
      sha256 "d37ff278277cb6b2f2a1d27441efd9032921fe8ed80162a86cef14e4394a9cde"
    else
      url "https://static.ampcode.com/cli/0.0.1779167780-g914a47/amp-linux-x64"
      sha256 "933f60f21f4d120373d6dcf326fc9b235e2dc92d399fa3ecf5dbf550f67c9157"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
