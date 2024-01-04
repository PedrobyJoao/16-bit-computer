package jack_analyzer

import (
	"fmt"
	"log"
	"os"
	"path/filepath"
	"strings"
)

type XMLOutput struct {
	filename string
	file     *os.File
}

func New(filePath string) (*XMLOutput, error) {
	dir := filepath.Dir(filePath)
	dir = filepath.Join(dir, "compiled")

	if _, err := os.Stat(dir); os.IsNotExist(err) {
		err = os.Mkdir(dir, 0755)
		if err != nil {
			return nil, err
		}
	}

	name := strings.TrimSuffix(filepath.Base(filePath), filepath.Ext(filePath)) + "T.xml"
	file, err := os.Create(filepath.Join(dir, name))
	if err != nil {
		return nil, err
	}

	return &XMLOutput{
		filename: filepath.Join(dir, name),
		file:     file,
	}, nil
}

func (x *XMLOutput) WriteValueTag(s, tag string) error {
	if s == "<" {
		log.Printf("here")
		s = "&lt;"
	} else if s == ">" {
		s = "&gt;"
    } else if s == "&" {
        s = "&amp;"
	} else if s == ">=" {
		s = "&ge;"
	} else if s == "<=" {
		s = "&le;"
	}
	//     else if s == "==" {
	//         s = "&eq;"
	//     } else if s == "!=" {
	//         s = "&ne;"
	//     }

	_, err := fmt.Fprintf(x.file, "<%s> %s </%s>\n", tag, s, tag)
	return err
}

// Write
func (x *XMLOutput) Write(v string) error {
	_, err := fmt.Fprintf(x.file, "%s", v)
	return err
}

func (x *XMLOutput) Close() error {
	return x.file.Close()
}
