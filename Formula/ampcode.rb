class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790755245-ga63d10"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790755245-ga63d10/amp-darwin-arm64"
      sha256 "517478f3f023614444b839558be5589d16b145e6c11cede996989c4cfb6a57b4"
    else
      url "https://static.ampcode.com/cli/0.0.1790755245-ga63d10/amp-darwin-x64"
      sha256 "70ece7590261ec5d4bd4f09c204c3a019c95d40631b35b150c1ea26139c2264e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790755245-ga63d10/amp-linux-arm64"
      sha256 "72bd978fecc365a8b8ef81a3a27ca04df20baefeb7f9b7e11ffcc1b0f17f4f35"
    else
      url "https://static.ampcode.com/cli/0.0.1790755245-ga63d10/amp-linux-x64"
      sha256 "e3780725537b7ed96c8e758b7016397c51baa50d006bb56654f509d6eccb42cd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
