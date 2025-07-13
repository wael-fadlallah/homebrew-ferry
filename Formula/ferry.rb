class Ferry < Formula
  desc "Local network file sharing tool with CLI and web interface"
  homepage "https://github.com/wael-fadlallah/ferry"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/wael-fadlallah/ferry/releases/download/v1.0.0/ferry_Darwin_arm64.tar.gz"
      sha256 "57d668dcbeb8588ec531601d8f8c08ba64b76a6f6235c4edf11f3beda7635a44"
    else
      url "https://github.com/wael-fadlallah/ferry/releases/download/v1.0.0/ferry_Darwin_x86_64.tar.gz"
      sha256 "6dc4f0cc09ee894652ce3cab649e818a3b52854f2b0cf7a66086002164f37ffe"
    end
  end

  def install
    bin.install "ferry"
  end

  test do
    assert_match "Ferry", shell_output("#{bin}/ferry -h", 0)
  end
end