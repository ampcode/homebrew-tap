class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785819659-g30d128"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785819659-g30d128/amp-darwin-arm64"
      sha256 "1b7569ba35faa6cd0800381b4933f45b989f88d9e74bbe269846b015a9241cc4"
    else
      url "https://static.ampcode.com/cli/0.0.1785819659-g30d128/amp-darwin-x64"
      sha256 "4d8666457bb70d0c4eb6cd68c768d58c120ff04dc31a4bc57cc1b485ea565a38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785819659-g30d128/amp-linux-arm64"
      sha256 "97bb900400e3bb3018bc1ad60da6f491bf357ccd5002ee00037b19d56b18a77c"
    else
      url "https://static.ampcode.com/cli/0.0.1785819659-g30d128/amp-linux-x64"
      sha256 "d2f8636cd90819374c9c271f65f27e97e4f5adc0ce51e7e478487097ee94cd14"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
